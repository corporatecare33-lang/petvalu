<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\GeneralSetting;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Cache;
use Illuminate\Http\Request;
use Toastr;
use Image;
use File;
use DB;
class GeneralSettingController extends Controller
{
    private function saveSettingImage($file, string $extension = 'webp', ?int $width = null, ?int $height = null, bool $encodeWebp = true): string
    {
        $uploadpath = 'public/uploads/settings/';
        $uploadDirectory = public_path('uploads/settings');

        File::ensureDirectoryExists($uploadDirectory, 0755, true);

        $name = time() . '-' . $file->getClientOriginalName();
        $name = preg_replace('"\.(jpg|jpeg|png|webp)$"', '.' . $extension, $name);
        $name = strtolower(preg_replace('/\s+/', '-', $name));

        $imageUrl = $uploadpath . $name;
        $savePath = $uploadDirectory . DIRECTORY_SEPARATOR . $name;

        $img = Image::make($file->getRealPath());

        if ($encodeWebp) {
            $img->encode('webp', 90);
        }

        if ($width || $height) {
            $img->resize($width, $height);
        }

        $img->save($savePath);

        return $imageUrl;
    }

    function __construct()
    {
        $this->middleware('permission:setting-list|setting-create|setting-edit|setting-delete', ['only' => ['index','store']]);
        $this->middleware('permission:setting-create', ['only' => ['create','store']]);
        $this->middleware('permission:setting-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:setting-delete', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        // ✅ Single record pattern: redirect directly to edit/create without listing/loop
        $setting = GeneralSetting::orderBy('id', 'desc')->first();

        if ($setting) {
            return redirect()->route('settings.edit', $setting->id);
        }

        return redirect()->route('settings.create');
    }
    public function create()
    {
        return view('backEnd.settings.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',

			'fraud_api_key' => 'required',
			'copyright_color' => 'required',
			'primary_color' => 'required',
			'secodery_color' => 'required',
			'footer_color' => 'required',
			'facebook_page_username' => 'required',
			
            'white_logo' => 'required',
			'og_baner' => 'required',
            'favicon' => 'required',
            'status' => 'required',
        ]);

        $image = $request->file('white_logo');
        $imageUrl = $this->saveSettingImage($image);

        // dark logo
        $image2 = $request->file('dark_logo');
        $image2Url = $this->saveSettingImage($image2);

        // OG Baner
        $image4 = $request->file('og_baner');
        $image4Url = $this->saveSettingImage($image4);


        // image with intervention 
        $image3 = $request->file('favicon');
        $image3Url = $this->saveSettingImage($image3, 'png', null, null, false);

        $input = $request->all();
        $input['white_logo'] = $imageUrl;
        $input['dark_logo'] = $image2Url;
        $input['favicon'] = $image3Url;
		 $input['og_baner'] = $image4Url;
        
        $input['vendor_enabled'] = $request->has('vendor_enabled') ? 1 : 0;
        $input['reseller_enabled'] = $request->has('reseller_enabled') ? 1 : 0;
        
        GeneralSetting::create($input);
        Toastr::success('Success','Data insert successfully');
        return redirect()->route('settings.index');
    }
    
    public function edit($id)
    {
        $edit_data = GeneralSetting::find($id);
        return view('backEnd.settings.edit',compact('edit_data'));
    }
    
    public function update(Request $request)
    {
        $this->validate($request, [
            'name' => 'required'
        ]);
        $update_data = GeneralSetting::find($request->id);
        $input = $request->all();
        // new white logo
        $image = $request->file('white_logo');
        if($image){
            // image with intervention 
            $image = $request->file('white_logo');
            $imageUrl = $this->saveSettingImage($image);
            $input['white_logo'] = $imageUrl;
        }else{
            $input['white_logo'] = $update_data->white_logo;
        }
        // new dark logo
        $image2 = $request->file('dark_logo');
        if($image2){
            // image with intervention 
            $image2 = $request->file('dark_logo');
            $image2Url = $this->saveSettingImage($image2);
            $input['dark_logo'] = $image2Url;
        }else{
            $input['dark_logo'] = $update_data->dark_logo;
        }

			// new OG image
        $image4 = $request->file('og_baner');
        if($image4){
            $image4 = $request->file('og_baner');
            $img4 = Image::make($image4->getRealPath());
            $width4 = $img4->height() > $img4->width() ? null : 1440;
            $height4 = $img4->height() > $img4->width() ? 793 : null;
            $image4Url = $this->saveSettingImage($image4, 'webp', $width4, $height4);
            $input['og_baner'] = $image4Url;
        }else{
            $input['og_baner'] = $update_data->og_baner;
        }




        // new favicon image
        $image3 = $request->file('favicon');
        if($image3){
            $image3 = $request->file('favicon');
            $image3Url = $this->saveSettingImage($image3, 'webp', 32, 32);
            $input['favicon'] = $image3Url;
        }else{
            $input['favicon'] = $update_data->favicon;
        }
        $input['status'] = 1;
        
        // Handle vendor_enabled and reseller_enabled (checkbox returns '1' if checked, null if unchecked)
        $input['vendor_enabled'] = $request->has('vendor_enabled') ? 1 : 0;
        $input['reseller_enabled'] = $request->has('reseller_enabled') ? 1 : 0;
        
        $update_data->update($input);

        Cache::forget('general_setting');
        Cache::forget('frontend_homepage_v1');
        Cache::forget('side_categories');
        Cache::forget('menu_categories');
        Cache::forget('brands_list');
        Cache::forget('pages_top');
        Cache::forget('pages_right');
        Cache::forget('common_menu');

        Toastr::success('Settings updated successfully!', 'Success');
        return redirect()->route('settings.edit', $update_data->id);
    }
 
    public function inactive(Request $request)
    {
        $inactive = GeneralSetting::find($request->hidden_id);
        $inactive->status = 0;
        $inactive->save();
        Toastr::success('Success','Data inactive successfully');
        return redirect()->back();
    }
    public function active(Request $request)
    {
        $active = GeneralSetting::find($request->hidden_id);
        $active->status = 1;
        $active->save();
        Toastr::success('Success','Data active successfully');
        return redirect()->back();
    }
    public function destroy(Request $request)
    {
        $delete_data = GeneralSetting::find($request->hidden_id);
        File::delete($delete_data->image);
        $delete_data->delete();
        Toastr::success('Success','Data delete successfully');
        return redirect()->back();
    }
}

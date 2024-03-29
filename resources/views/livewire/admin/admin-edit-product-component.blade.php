<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Edit product
                            </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.products')}}" class="btn btn-success pull-right">All products</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                    
                        <form class="form-horizontal" enctype="multipart/form-data" wire:submit.prevent="updateProduct">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Product Name</label>
                                <div class="col-md-7">
                                    <input type="text" placeholder="Product Name" class="form-control input-md" wire:model="name" wire:keyup="generateSlug" />
                                    @error('name') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Product Slug</label>
                                <div class="col-md-7">
                                    <input type="text" placeholder="Product Slug" class="form-control input-md" wire:model="slug" />
                                    @error('slug') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Short Description</label>
                                <div class="col-md-7" wire:ignore>
                                    <textarea class="form-control" id="" placeholder="Short Description" wire:model="short_description"></textarea>
                                    @error('short_description') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group" wire:ignore>
                                <label class="col-md-3 control-label">Description</label>
                                <div class="col-md-7">
                                    <textarea class="form-control" id="" placeholder="Description" wire:model="description"></textarea>
                                    @error('description') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Regular Price</label>
                                <div class="col-md-7">
                                    <input type="text" placeholder="Regular Price" class="form-control input-md" wire:model="regular_price" />
                                    @error('regular_price') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Sale Price</label>
                                <div class="col-md-7">
                                    <input type="text" placeholder="Sale Price" class="form-control input-md" wire:model="sale_price" />
                                    @error('sale_price') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">SKU</label>
                                <div class="col-md-7">
                                    <input type="text" placeholder="SKU" class="form-control input-md" wire:model="SKU" />
                                    @error('SKU') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Stock</label>
                                <div class="col-md-7">
                                   <select class="form-control" wire:model="stock_status">
                                    <option value="instock">Instock</option>
                                    <option value="outofstock">Out of Stock</option>
                                   </select>
                                   @error('stock_status') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Featured</label>
                                <div class="col-md-7">
                                   <select class="form-control" wire:model="featured">
                                    <option value="0">No</option>
                                    <option value="1">Yes</option>
                                   </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Quantity</label>
                                <div class="col-md-7">
                                    <input type="text" placeholder="Quantity" class="form-control input-md" wire:model="quantity" />
                                    @error('quantity') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Product Image</label>
                                <div class="col-md-7">
                                    <input type="file" class="form-control input-md" wire:model="newimage" />
                                    @if($newimage)
                                        <img src="{{$newimage->temporaryUrl()}}" width="120" />
                                    @else
                                        <img src="{{asset('assets/images/products')}}/{{$image}}" width="120" />
                                    @endif
                                    @error('newimage') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Product Gallery</label>
                                <div class="col-md-7">
                                    <input type="file" class="form-control input-md" wire:model="newimages" multiple />
                                    @if($newimages)
                                        @foreach($newimages as $newimage)
                                            @if($newimage)
                                                <img src="{{$newimage->temporaryUrl()}}" width="120" />
                                            @endif
                                        @endforeach
                                    @else
                                        @foreach($images as $image)
                                            @if($image)
                                                <img src="{{asset('assets/images/products')}}/{{$image}}" width="120" />
                                            @endif
                                        @endforeach                                        
                                    @endif                                    
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Category</label>
                                <div class="col-md-7">
                                   <select class="form-control" wire:model="category_id" wire:change="changeSubcategory">
                                    <option value="">Select Category</option>
                                    @foreach ($categories as $category)
                                        <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                   </select>
                                   @error('category_id') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Sub Category</label>
                                <div class="col-md-7">
                                   <select class="form-control" wire:model="scategory_id">
                                    <option value="">Select Sub Category</option>
                                    @foreach ($scategories as $scategory)
                                        <option value="{{$scategory->id}}">{{$scategory->name}}</option>
                                    @endforeach
                                   </select>
                                   @error('scategory_id') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Product Attribute</label>
                                <div class="col-md-6">
                                   <select class="form-control" wire:model="attr">
                                    <option value="">Select Attribute</option>
                                    @foreach ($pattributes as $pattribute)
                                        <option value="{{$pattribute->id}}">{{$pattribute->name}}</option>
                                    @endforeach
                                   </select>                                   
                                </div>
                                <div class="col-md-1">
                                    <button type="submit" class="btn btn-primary" wire:click.prevent="add">Add</button>
                                </div>
                            </div>

                            @foreach($inputs as $key => $value)
                                <div class="form-group">
                                    <label class="col-md-3 control-label">{{$pattributes->where('id', $attribute_arr[$key])->first()->name}}</label>
                                    <div class="col-md-6">
                                        <input type="text" placeholder="{{$pattributes->where('id', $attribute_arr[$key])->first()->name}}" class="form-control input-md" wire:model="attribute_values.{{$value}}" />                                        
                                    </div>
                                    <div class="col-md-1">
                                        <a href="#" style="margin-left: 15px;" wire:click.prevent="remove({{$key}})"><i class="fa fa-times fa-2x text-danger"></i></a>
                                    </div>
                                </div>
                            @endforeach

                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-7">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>

                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@push('scripts')
    <script>
        $(function() {
            tinymce.init({
                selector:'#short_description',
                setup:function(editor){
                    editor.on('Change',function(e){
                        tinyMCE.triggerSave();
                        var sd_data = $('#short_description').val();
                        $this.set('short_description', sd_data);
                    });
                }
            });

            tinymce.init({
                selector:'#description',
                setup:function(editor){
                    editor.on('Change',function(e){
                        tinyMCE.triggerSave();
                        var d_data = $('#description').val();
                        $this.set('description', d_data);
                    });
                }
            });
        });
    </script>
@endpush

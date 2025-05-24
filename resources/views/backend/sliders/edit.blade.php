<!-- Walk as if you are kissing the Earth with your feet. - Thich Nhat Hanh -->
@extends('backend.layouts.master')
@section('title', 'Edit Slider Photo')

@section('backend')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Slider Photo</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item active">Edit Slider Photo</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card card-primary">
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form action="{{ route('admin.sliders.update', $slider->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="card-body mb-0">

                                <div class="form-group mb-2">
                                    <label class="form-label">New Slider Photo</label>
                                    <input type="file" class="form-control" name="photo_name" onchange="mainThumUrl(this)">
                                    <img src="" id="mainThmb">
                                </div>
                                <div class="form-group mb-2">
                                    <label class="form-label">Old Slider Photo</label>
                                    <div class="">
                                        <img src="{{ asset($slider->photo_name) }}" width="80">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Status</label>
                                    <select class="form-control" name="status">
                                        <option value="">Select A Status</option>
                                        <option value="Active" {{ $slider->status == 'Active' ? 'selected' : '' }}>Active</option>
                                        <option value="Inactive" {{ $slider->status == 'Inactive' ? 'selected' : '' }}>Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    <script type="text/javascript">
    function mainThumUrl(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $("#mainThmb").attr("src",e.target.result).width(80);
                // .height(80)
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    </script>
@endsection


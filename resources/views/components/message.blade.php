@foreach ($errors->all() as $message)
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ $message }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endforeach
@if($isToastrScript)
    @push('scripts')
        <script>
            var messages = @json($messages);
            toastr.options = {
                "closeButton": true,
                "progressBar": true,
            };
            $.each(messages, function (type, value) {
                toastr[type](value);
            });
        </script>
    @endpush
@else
    @foreach ($messages as $type => $message)
        <div class="alert alert-{{$type}} alert-block fade show">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>{{ $message }}</strong>
        </div>
    @endforeach

@endif

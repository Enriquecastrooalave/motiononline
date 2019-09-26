@extends('layouts.admin')
@section('title','Asked Question')
@section('content')
  <div class="content-main-block mrg-t-40">
   
    <div class="content-block box-body">
      <table id="movies_table" class="table table-hover">
        <thead>
          <tr class="table-heading-row">
            <th>
              <div class="inline">
                <input id="checkboxAll" type="checkbox" class="filled-in" name="checked[]" value="all" id="checkboxAll">
                <label for="checkboxAll" class="material-checkbox"></label>
              </div>
              #
            </th>
            <th>User Name</th>
            <th>Question</th>
            <th>Answer</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>

        @if ($question)
          <tbody>
            @php ($no = 1) @endphp
            @foreach ($question as $ques)
              <tr>
                <td>
                  <div class="inline">
                    <input type="checkbox" form="bulk_delete_form" class="filled-in material-checkbox-input" name="checked[]" value="{{$ques->id}}" id="checkbox{{$ques->id}}">
                    <label for="checkbox{{$ques->id}}" class="material-checkbox"></label>
                  </div>
                  {{$no}}
                  @php ($no++) 
                  @endphp
                </td>
                <td>@php $user=App\User::findOrfail($ques->user_id) @endphp {{$user->name}}</td>
                <td>{{$ques->question}}</td>
                <td>{{$ques->answer}}</td>
                <td>@if($ques->status==0) 
                  <p style="color: #d63031; font-size: 14px">Reply</p>
                  @else
                  <p style="color: #00b894; font-size: 14px">Done</p> 
                  @endif
                </td>
                <td>
                  <div class="admin-table-action-block"> 
                   
                    <a href="{{route('question.edit', $ques->id)}}" data-toggle="tooltip" data-original-title="Answer" class="btn-info btn-floating"><i class="material-icons">local_library</i></a>
                    <!-- Delete Modal -->
                    <button type="button" class="btn-danger btn-floating" data-toggle="modal" data-target="#{{$ques->id}}deleteModal"><i class="material-icons">delete</i> </button>
                  </div>
                </td>
              </tr>
              <!-- Modal -->
                <div id="{{$ques->id}}deleteModal" class="delete-modal modal fade" role="dialog">
                  <div class="modal-dialog modal-sm">
                    <!-- Modal content-->
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <div class="delete-icon"></div>
                      </div>
                      <div class="modal-body text-center">
                        <h4 class="modal-heading">Are You Sure ?</h4>
                        <p>Do you really want to delete these records? This process cannot be undone.</p>
                      </div>
                      <div class="modal-footer">
                        {!! Form::open(['method' => 'DELETE', 'action' => ['AskQuestionController@destroy', $ques->id]]) !!}
                          <button type="reset" class="btn btn-gray translate-y-3" data-dismiss="modal">No</button>
                          <button type="submit" class="btn btn-danger">Yes</button>
                        {!! Form::close() !!}
                      </div>
                    </div>
                  </div>
                </div>
            @endforeach
          </tbody>
        @endif
      </table>
    </div>
  </div>
@endsection
@section('custom-script')
  <script>
    $(function(){
      $('#checkboxAll').on('change', function(){
        if($(this).prop("checked") == true){
          $('.material-checkbox-input').attr('checked', true);
        }
        else if($(this).prop("checked") == false){
          $('.material-checkbox-input').attr('checked', false);
        }
      });
    });
  </script>
@endsection
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  addPostComment();
  leaveAReply();


})


  function addPostComment() {
    $('#new_comment').on('submit', function(event) {
      event.preventDefault();
      // url = this.action;
      // data = $(this).serialize();
      // {
      //   authenticity_token: $('input[name="authenticity_token"]').val(),
      //   comment: {
      //     body: $('input#comment_body').val(),
      //     post_id: $('#comment_post_id').val(),
      //     user_id: $('#comment_user_id').val()
      //   }
      // }
      // $.ajax({
      //   type: 'POST',
      //   url: url,
      //   data: data,
      //   success: function(resp) {
      //     // moved to create.js.erb
      //   }
      // });
    });
  }
  function leaveAReply() {
    $('#reply_form').on('submit', function(event) {
      event.preventDefault();
    });
  }
  function newPostLink() {
    $('#new_post_link').on('click', function(event) {
      event.preventDefault();
      // must have callback function to prevent CSRF
      $.get(event.toElement.href, function(r) {
      });
    });
  }
  function preventEditLink() {
    $('.edit_post').on('click', function(event) {
      event.preventDefault();
      $.get(event.toElement.href, function(r) {
      });
    });
  }
  function exitForm() {
    $('#new_post').remove()
    clearForm();
  }
  function clearForm() {
    $('#form_background').remove();
    $('div#new_post_form').hide();
  }

/***
 * Excerpted from "Agile Web Development with Rails 3.2",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material,
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose.
 * Visit http://www.pragmaticprogrammer.com/titles/rails32 for more book information.
***/
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require_tree .
.depot_form {
  fieldset {
      background: #efe;

  legend {
      color: #dfd;
      background: #141;
      font-family: sans-serif;
      padding: 0.2em 1em;
    }
}
form {
  label {
    width: 5em;
    float: left;
    text-align: right;
    padding-top: 0.2em;
    margin-right: 0.1em;
    display: block;
}
  select, textarea, input {
  margin-left: 0.5em;
}
  .submit {
    margin-left: 4em;
}
  br {
display: none
  }
} 
}

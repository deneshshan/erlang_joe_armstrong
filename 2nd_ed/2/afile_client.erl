-module(afile_client).
-export([ls/1, 
         get_file/2,
         read_file_info/2]).

ls(Server) ->
  Server ! {self(), list_dir},
  receive
    {Server, FileList} ->
      FileList
  end.

get_file(Server, File) ->
  Server ! {self(), {get_file, File}},
  receive
    {Server, Content} ->
      Content
  end.

read_file_info(Server, File) ->
  Server ! {self(), {read_file_info, File}},
  receive
    {Server, Content} ->
      Content
  end.

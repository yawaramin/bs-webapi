(*
type intf = [Yawaramin_BsWebapi_Node.intf | `document]
type 'a t = ([> intf] as 'a) Yawaramin_BsWebapi_Common.t

external createElement:
  tagName:([`div | `span] [@bs.string]) ->
  [< Yawaramin_BsWebapi_Element.intf | `htmlElement] Yawaramin_BsWebapi_Common.t =
  "" [@@bs.send.pipe: 'a t]
*)
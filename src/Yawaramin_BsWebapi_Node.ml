type intf = [Yawaramin_BsWebapi_EventTarget.intf | `node]
type 'a t = ([> intf] as 'a) Yawaramin_BsWebapi_Common.t

external baseURI: 'a t -> string = "" [@@bs.get]
external childNodes: 'a t -> 'a t array = "" [@@bs.get]
external firstChild: 'a t -> 'a t = "" [@@bs.get]

let cast t = t
  |> Yawaramin_BsWebapi_Common.unsafeCoerce
  |> baseURI
  |> Yawaramin_BsWebapi_Common.unsafeCoerce
  |> Js.Nullable.to_opt

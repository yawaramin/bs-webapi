type intf = [Yawaramin_BsWebapi_Node.intf | `element]
type 'a t = ([> intf] as 'a) Yawaramin_BsWebapi_Common.t

external className: 'a t -> string = "" [@@bs.get]
external setClassName: 'a t -> string -> unit = "className" [@@bs.set]

let cast t = t
  |> Yawaramin_BsWebapi_Common.unsafeCoerce
  |> className
  |> Yawaramin_BsWebapi_Common.unsafeCoerce
  |> Js.Nullable.to_opt

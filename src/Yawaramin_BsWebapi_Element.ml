module Common = Yawaramin_BsWebapi_Common

type intf = [Yawaramin_BsWebapi_Node.intf | `element]

external className: [> intf] Common.t -> string = "" [@@bs.get]
external setClassName: [> intf] Common.t -> string -> unit =
  "className" [@@bs.set]

let cast t = t
  |> Common.unsafeCoerce
  |> className
  |> Common.unsafeCoerce
  |> Js.Nullable.to_opt

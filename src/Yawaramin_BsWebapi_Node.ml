module Common = Yawaramin_BsWebapi_Common

type intf = [Yawaramin_BsWebapi_EventTarget.intf | `node]

external baseURI: [> intf] Common.t -> string = "" [@@bs.get]

let cast t = t
  |> Common.unsafeCoerce
  |> baseURI
  |> Common.unsafeCoerce
  |> Js.Nullable.to_opt

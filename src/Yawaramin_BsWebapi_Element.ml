type this = [Yawaramin_BsWebapi_Node.this | `element]
type 'a t = ([> this] as 'a) Yawaramin_BsWebapi_Common.t

external className: 'a t -> string = "" [@@bs.get]
external setClassName: 'a t -> string -> unit = "className" [@@bs.set]

let cast t =
  let module Common = Yawaramin_BsWebapi_Common in
  let t: this Common.t = Common.unsafeCoerce t in

  t |> className
    |> Yawaramin_BsWebapi_Common.unsafeCoerce
    |> Js.Nullable.to_opt
    |> Js.Option.map (fun [@bs] _ -> t)

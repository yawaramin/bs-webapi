type this = [Yawaramin_BsWebapi_Node.this | `attr]
type 'a t = ([> this] as 'a) Yawaramin_BsWebapi_Common.t

external namespaceURI: 'a t -> string Js.nullable = "" [@@bs.get]
external prefix: 'a t -> string Js.nullable = "" [@@bs.get]
external localName: 'a t -> string = "" [@@bs.get]
external name: 'a t -> string = "" [@@bs.get]
external value: 'a t -> string = "" [@@bs.get]
external ownerElement:
  'a t ->
  [Yawaramin_BsWebapi_Node.this | `element] Yawaramin_BsWebapi_Common.t Js.nullable =
  "" [@@bs.get]

let cast t =
  let module Common = Yawaramin_BsWebapi_Common in
  let t: this Common.t = Common.unsafeCoerce t in

  t |> localName
    |> Yawaramin_BsWebapi_Common.unsafeCoerce
    |> Js.Nullable.to_opt
    |> Js.Option.map (fun [@bs] _ -> t)

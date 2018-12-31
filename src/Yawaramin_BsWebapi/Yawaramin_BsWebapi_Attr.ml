type this = [Yawaramin_BsWebapi_Node.this | `attr]
type 'a subtype = ([> this] as 'a) Yawaramin_BsWebapi_Common.t
type 'a supertype = ([< this] as 'a) Yawaramin_BsWebapi_Common.t

external namespaceURI: 'a subtype -> string Js.nullable = "" [@@bs.get]
external prefix: 'a subtype -> string Js.nullable = "" [@@bs.get]
external localName: 'a subtype -> string = "" [@@bs.get]
external name: 'a subtype -> string = "" [@@bs.get]
external value: 'a subtype -> string = "" [@@bs.get]
external ownerElement: 'a subtype -> [Yawaramin_BsWebapi_Node.this | `element] Yawaramin_BsWebapi_Common.t Js.nullable = "" [@@bs.get]

let cast t =
  let module Common = Yawaramin_BsWebapi_Common in
  let t = Common.unsafeCoerce t in

  t |> localName
    |> Yawaramin_BsWebapi_Common.unsafeCoerce
    |> Js.Nullable.toOption
    |> Js.Option.map (fun [@bs] _ -> t)

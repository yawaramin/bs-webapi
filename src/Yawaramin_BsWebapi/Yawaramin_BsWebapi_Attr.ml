type 'a t = 'a Yawaramin_BsWebapi_EventTarget.t
type this = [Yawaramin_BsWebapi_Node.this | `attr]
type 'a subtype = ([> this] as 'a) t
type 'a supertype = ([< this] as 'a) t

external namespaceURI: 'a subtype -> string Js.nullable = "" [@@bs.get]
external prefix: 'a subtype -> string Js.nullable = "" [@@bs.get]
external localName: 'a subtype -> string = "" [@@bs.get]
external name: 'a subtype -> string = "" [@@bs.get]
external value: 'a subtype -> string = "" [@@bs.get]
external ownerElement: 'a subtype -> [Yawaramin_BsWebapi_Node.this | `element] t Js.nullable = "" [@@bs.get]

let cast t =
  let module Common = Yawaramin_BsWebapi_Common in
  let t = Common.unsafeCoerce t in

  t |> localName
    |> Common.unsafeCoerce
    |> Js.Nullable.toOption
    |> Js.Option.map (fun [@bs] _ -> t)

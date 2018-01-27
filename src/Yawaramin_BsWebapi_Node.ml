module Type = struct
  let element = 1
  let text = 3
  let processingInstruction = 7
  let comment = 8
  let document = 9
  let documentType = 10
  let documentFragment = 11
end

module DocumentPosition = struct
  let disconnected = 1
  let preceding = 2
  let following = 4
  let contains = 8
  let containedBy = 16
  let implementationSpecific = 32
end

type this = [Yawaramin_BsWebapi_EventTarget.this | `node]
type 'a t = ([> this] as 'a) Yawaramin_BsWebapi_Common.t

external baseURI: 'a t -> string = "" [@@bs.get]
external childNodes: 'a t -> 'b t array = "" [@@bs.get]
external firstChild: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external lastChild: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external nextSibling: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external nodeName: 'a t -> string = "" [@@bs.get]
external nodeType: 'a t -> int = "" [@@bs.get]
external nodeValue: 'a t -> string = "" [@@bs.get]
external setNodeValue: 'a t -> string -> unit = "nodeValue" [@@bs.set]
external ownerDocument:
  'a t -> [< this | `document] Yawaramin_BsWebapi_Common.t Js.nullable =
  "" [@@bs.get]

external parentNode: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external parentElement: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external previousSibling: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external textContent: 'a t -> string Js.nullable = "" [@@bs.get]
external setTextContent: 'a t -> string -> unit =
  "textContent" [@@bs.set]

external appendChild: 'b t -> 'b t = "" [@@bs.send.pipe: 'a t]
external cloneNode: ?deep:Js.boolean -> 'a t = "" [@@bs.send.pipe: 'a t]
external compareDocumentPosition: 'b t -> int = "" [@@bs.send.pipe: 'a t]
external contains: 'b t -> Js.boolean = "" [@@bs.send.pipe: 'a t]
external hasChildNodes: 'a t -> Js.boolean = "" [@@bs.send]
external insertBefore:
  newNode:'b t -> referenceNode:'c t Js.null -> 'b t =
  "" [@@bs.send.pipe: 'a t]

external isDefaultNamespace: string -> Js.boolean =
  "" [@@bs.send.pipe: 'a t]

external isEqualNode: 'a t -> Js.boolean = "" [@@bs.send.pipe: 'a t]
external isSameNode: 'a t -> Js.boolean = "" [@@bs.send.pipe: 'a t]
external lookupPrefix: 'a t -> string Js.nullable = "" [@@bs.send]
external lookupNamespaceURI: string Js.null -> string Js.nullable =
  "" [@@bs.send.pipe: 'a t]

external normalize: 'a t -> unit = "" [@@bs.send]
external removeChild: 'b t -> 'b t = "" [@@bs.send.pipe: 'a t]
external replaceChild: newChild:'c t -> oldChild:'b t -> unit =
  "" [@@bs.send.pipe: 'a t]

let cast t =
  let module Common = Yawaramin_BsWebapi_Common in
  let t = Common.unsafeCoerce t in

  t |> baseURI
    |> Yawaramin_BsWebapi_Common.unsafeCoerce
    |> Js.Nullable.to_opt
    |> Js.Option.map (fun [@bs] _ -> t)

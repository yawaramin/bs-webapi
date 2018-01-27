(**)

type 'a t = ([<
| `element
| `document
| `documentFragment
] as 'a) Yawaramin_BsWebapi_Common.t
type 'a element = 'a Yawaramin_BsWebapi_Element.supertype

external children: 'a t -> Yawaramin_BsWebapi_HTMLCollection.t = "" [@@bs.get]
external firstElementChild: 'a t -> 'b element Js.nullable = "" [@@bs.get]
external lastElementChild: 'a t -> 'b element Js.nullable = "" [@@bs.get]
external childElementCount: 'a t -> int = "" [@@bs.get]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is an ['a t] value). *)
external querySelector: string -> 'b element Js.nullable = "" [@@bs.send.pipe: 'a t]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is an ['a t] value). *)
external querySelectorAll: string -> Yawaramin_BsWebapi_NodeList.t = "" [@@bs.send.pipe: 'a t]

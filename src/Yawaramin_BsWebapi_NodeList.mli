(**)

type t = Yawaramin_BsWebapi_Common.nodeList
type 'a node = 'a Yawaramin_BsWebapi_Node.supertype
type 'a iterator = 'a Yawaramin_BsWebapi_Iterator.t

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [t] value). *)
external item: int -> 'a node Js.nullable = "" [@@bs.send.pipe: t]
external length: t -> int = "" [@@bs.get]
external entries: t -> (int * 'a node) iterator = "" [@@bs.send]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [t] value). Also,
    [callback] must be a BuckleScript-uncurried function with [\[\@bs\]]. *)
external forEach: callback:('a node -> int -> t -> unit [@bs]) -> ?thisArg:t -> unit = "" [@@bs.send.pipe: t]
external keys: t -> int iterator = "" [@@bs.send]
external values: t -> 'a node iterator = "" [@@bs.send]

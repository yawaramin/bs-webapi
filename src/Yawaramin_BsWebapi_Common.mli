(** Common WebAPI types and operations. *)

(** A DOM object starting from [EventTarget] and extending to any of its
    subtypes. *)
type _ t

(** [unsafeCoerce a] unsafely casts a value [a] of any type to any other
    type. Throws away all type safety guarantees. Use with caution. *)
external unsafeCoerce: 'a -> 'b = "%identity"

module Web = Yawaramin_BsWebapi
let test (elem: 'a Web.Element.supertype) =
  Yawaramin_BsWebapi_NonDocumentTypeChildNode.nextElementSibling elem

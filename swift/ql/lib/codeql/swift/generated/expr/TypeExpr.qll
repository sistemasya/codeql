// generated by codegen/codegen.py
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.type.TypeRepr

class TypeExprBase extends @type_expr, Expr {
  override string getAPrimaryQlClass() { result = "TypeExpr" }

  TypeRepr getTypeRepr() {
    exists(TypeRepr x |
      type_expr_type_reprs(this, x) and
      result = x.resolve()
    )
  }

  predicate hasTypeRepr() { exists(getTypeRepr()) }
}

" based on SIMULATE5 from SSP

function! fortran_upper#keywords1() abort
  return [
         \ "abs", "achar", "acos", "all", "allocatable", "allocate", "and",
         \ "any", "asin", "atan", "call", "case", "character", "complex",
         \ "contains", "cos", "cycle", "dble", "deallocate", "do",
         \ "dot_product", "else", "elseif", "enddo", "endfunction", "endif",
         \ "endinterface", "endmodule", "endprogram", "endselect",
         \ "endsubroutine ", "endtype", "eq", "exit", "exp", "external",
         \ "false", "format", "function", "if", "implicit", "integer", "intent",
         \ "interface", "len", "log", "logical", "matmul", "max", "maxval",
         \ "min", "minval", "module", "ne", "none", "not", "only", "or",
         \ "parameter", "private", "program", "public", "read", "real",
         \ "return", "save", "select", "sin", "sqrt", "stop", "subroutine",
         \ "sum", "tan", "then", "trim", "trim_len", "true", "type", "while",
         \ "write", "default"
         \ ]
endfunction

" based on nfherrin's style (and OpenNodal)

function! fortran_upper#keywords2() abort
  return [
         \ "abs", "achar", "acos", "all", "allocatable", "allocate", "and",
         \ "any", "asin", "atan", "call", "case", "character", "contains",
         \ "cos", "cycle", "dble", "deallocate", "do", "dot_product", "else",
         \ "elseif", "enddo", "endfunction", "endif", "endinterface",
         \ "endmodule", "endprogram", "endselect", "endsubroutine ", "endtype",
         \ "eq", "exit", "exp", "external", "false", "format", "function", "if",
         \ "in", "inout", "integer", "intent", "interface", "len", "log",
         \ "logical", "matmul", "max", "maxval", "min", "minval", "module",
         \ "ne", "not", "only", "or", "out", "parameter", "private", "program",
         \ "public", "read", "real", "return", "save", "select", "sin", "sqrt",
         \ "stop", "subroutine", "sum", "tan", "then", "trim", "trim_len",
         \ "true", "type", "use", "while", "write",
         \ ]
endfunction


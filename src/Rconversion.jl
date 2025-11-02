module Rconversion

import DataStructures: OrderedDict

import Base:
    eltype,
    convert,
    isascii,
    names,
    length,
    size,
    getindex,
    setindex!,
    show,
    showerror,
    write

import Base.Iterators: iterate, IteratorSize, IteratorEltype, Pairs, pairs

const libR = "/Library/Frameworks/R.framework/Resources/lib/libR"

# const libR = Base.OncePerProcess{String}() do
#     lR = only(filter(contains("libR."), Libc.Libdl.dllist()))
#     println(Core.stdout, "libR = ", lR)
#     return lR
# end

include("types.jl")
include("Const.jl")
Const.load(false) # load the values of constants assuming that libR has been dlopen'd
include("methods.jl")
include("base.jl")
include("default.jl")

export
    CharSxp,
    CplxSxp,
    UnknownSxp,
    IntSxp,
    LglSxp,
    NilSxp,
    RealSxp,
    StrSxp,
    SymSxp,
    NilValue,
    RObject,
    getattrib,
    rcopy,
    sexp,
    preserve,
    release,
    protect,
    unprotect,
    coerceVector,
    isReal

end

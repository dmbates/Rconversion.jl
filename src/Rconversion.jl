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
    NilValue,
    RObject,
    rcopy,
    sexp,
    preserve,
    release,
    protect,
    unprotect,
    coerceVector,
    isReal

end

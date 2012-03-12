
# module Devel::Which

**Devel::Which - locate a symbol/library in the user's namespace/path**

Forked from http://raa.ruby-lang.org/project/devel-which/

## SYNOPSIS

    require 'devel/which'

    File.which_constant("TRUNC")    #=> File::Constants
    Fixnum.which_method("nonzero?") #=> Numeric
    which_library("net/http")       #=> (the path where the net/http exists)
    whereis_library("forwardable")  #=> [(path, ... )]


## DESCRIPTION

Devel::Which provides an effective definition finder, for example,
Fixnum#nonzero? is defined at Numeric and
Fixnum.which_method("nonzero?") returns Numeric.

## Constants

Devel::Which::VERSION

Stands for the version of Devel::Which.

## Methods

Module::which_constant(name)

Returns Devel::Which::ForModule::which_constant(self, name). This
method is defined in devel/which.

Module::which_method(name)

Returns Devel::Which::ForClass::which_method(self, name). This method
is defined in devel/which.

Object::which_library(name)

Returns Devel::Which::ForObject::which_library(name). This method is
defined in devel/which.

Returns Devel::Which::ForObject::whereis_library(name). This method is
defined in devel/which.

Devel::Which::ForModule::which_constant(mod, name)

Returns a Module where the constant name is defined. This method is
defined in devel/which/formodule.

Devel::Which::ForModule::which_method(mod, name)

Returns a Class where the method name is defined. This method is
defined in devel/which/formodule.

Devel::Which::ForObject::which_library(name)

Returns a file name where the library name exists. This method is
defined in devel/which/forobject.

Devel::Which::ForObject::whereis_library(name)

Returns an Array consists of file names where the library name exists.
This method is defined in devel/which/forobject.

## AUTHORS

### FORK

mori_dev <mori.dev.asdf at gmail dot com>

### ORIGINAL

GOTO Kentaro aka Gotoken <gotoken at notwork dot org>

## HISTORY

### FORK

2012-03-13: VERSION 0.3.1 - replaced "Config" to "RbConfig" for Ruby1.9.3
2012-02-25: VERSION 0.3.0 - added gem, gemspec, Rakefile.

### ORIGINAL

2002-02-02: VERSION 0.2.0 - which_method moved to
Devel::Which::ForModule.

2002-01-15: VERSION 0.1.1 - added whereis_library (inspired by eban).

2002-01-13: VERSION 0.1.0


## LICENSE

Ruby's License
See LICENSE/* for details.

## 
##  Copyright (c) 2014-2016 Enrico M. Crisostomo
## 
##  This program is free software; you can redistribute it and/or modify it under
##  the terms of the GNU General Public License as published by the Free Software
##  Foundation; either version 3, or (at your option) any later version.
## 
##  This program is distributed in the hope that it will be useful, but WITHOUT
##  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
##  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
##  details.
## 
##  You should have received a copy of the GNU General Public License along with
##  this program.  If not, see <http://www.gnu.org/licenses/>.
## 
## *
##  @file
##  @brief Header of the `libfswatch` library functions for filter management.
## 
##  @copyright Copyright (c) 2014-2016 Enrico M. Crisostomo
##  @license GNU General Public License v. 3.0
##  @author Enrico M. Crisostomo
##  @version 1.8.0
## 

## #  include "cevent.h"

## *
##  @brief Event filter type.
## 

type
  filter_type* = enum
    filter_include, filter_exclude


type
  cmonitor_filter* = object
    text*: cstring
    `type`*: filter_type
    case_sensitive*: bool
    extended*: bool


## *
##  @brief Event type filter.
## 

type
  event_type_filter* = object
    flag*: event_flag


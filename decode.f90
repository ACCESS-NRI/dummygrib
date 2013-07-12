!> \file    decode.f90
!! \author  Scott Wales (scott.wales@unimelb.edu.au)
!! \brief   Dummy GRIB DECODE function for the UM
!! 
!! Copyright 2013 ARC Centre of Excellence for Climate System Science
!! 
!! Licensed under the Apache License, Version 2.0 (the "License");
!! you may not use this file except in compliance with the License.
!! You may obtain a copy of the License at
!! 
!!     http://www.apache.org/licenses/LICENSE-2.0
!! 
!! Unless required by applicable law or agreed to in writing, software
!! distributed under the License is distributed on an "AS IS" BASIS,
!! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
!! See the License for the specific language governing permissions and
!! limitations under the License.
!! 

! This function only returns an error, it replaces an equivalent one from
! the GRIB library that the Met Office uses in the UM
subroutine decode(data, &
                  fpwork, lendata, numfp, &
                  vertcoord, lenvertcoord, numvert, &
                  bitmap, lenbitmap, numbitmap, &
                  quasi, lenquasi, numquasi, &
                  width, wordsize, &
                  block0, block1, block2, block3, block4, blockr, &
                  irecord, actiolen, posn, words, off, error, &
                  workint1, workint2, workre1, errorunit, msglvl)

    real(kind=8)    :: data(:)
    real(kind=8)    :: fpwork(:)
    integer(kind=8) :: lendata, numfp
    real(kind=8)    :: vertcoord(:)
    integer(kind=8) :: lenvertcoord, numvert
    integer(kind=8) :: bitmap(:)
    integer(kind=8) :: lenbitmap, numbitmap
    integer(kind=8) :: quasi(:)
    integer(kind=8) :: lenquasi, numquasi
    integer(kind=8) :: width, wordsize
    integer(kind=8) :: block0(:), block1(:), block2(:)
    integer(kind=8) :: block3(:), block4(:)
    real(kind=8)    :: blockr(:)
    integer(kind=8) :: irecord(:)
    integer(kind=8) :: actiolen
    real(kind=8)    :: posn(:)
    integer(kind=8) :: words
    real(kind=8)    :: off
    integer(kind=8) :: error
    integer(kind=8) :: workint1(:), workint2(:)
    real(kind=8)    :: workre1(:)
    integer(kind=8) :: errorunit, msglvl

    ! Always return an error
    error = -1
end subroutine

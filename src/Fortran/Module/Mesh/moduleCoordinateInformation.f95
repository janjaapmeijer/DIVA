MODULE moduleCoordinateInformation

! ============================================================
! ============================================================
! ============================================================
! ===                                                      ===
! ===                                                      ===
! ===                  Module specifications               ===
! ===                                                      ===
! ===                                                      ===
! ============================================================
! ============================================================
! ============================================================

! Declaration
! ===========
  REALType, PRIVATE, SAVE :: minLongitude, maxLongitude, meanLongitude
  REALType, PRIVATE, SAVE :: minLatitude, maxLatitude, meanLatitude
  REALType, PRIVATE, SAVE :: deltaXInKm, deltaYInKm
  REALType, PRIVATE, SAVE :: pi
  REALType, PRIVATE, SAVE :: meanXCoordinate, meanYCoordinate

  INTEGERType, PRIVATE, SAVE :: iChangeCoordinate, iSpheric
  LOGICAL, PRIVATE, SAVE :: gmshWithCoastRefinement

! Procedures status
! =================

!  General part
!  ------------
   PUBLIC :: setMinimumLongitude, setMinimumLatitude, &
             setMaximumLongitude, setMaximumLatitude, &
             setMeanLongitude, setMeanLatitude, &
             setDeltaXInKm, setDeltaYInKm, &
             setPi, &
             setMeanXCoordinate, setMeanYCoordinate, &
             setIChangeCoordinate, setISpheric, &
             setGmshWithCoastRefinement, &
             getMinimumLongitude, getMinimumLatitude, &
             getMaximumLongitude, getMaximumLatitude, &
             getMeanLongitude, getMeanLatitude, &
             getDeltaXInKm, getDeltaYInKm, &
             getPi, &
             getMeanXCoordinate, getMeanYCoordinate, &
             getIChangeCoordinate, getISpheric, &
             initialise, computeMeanLatitude, computeMeanLongitude, &
             getGmshWithCoastRefinement


! ============================================================
! ============================================================
! ============================================================
! ===                                                      ===
! ===                                                      ===
! ===                  Module procedures                   ===
! ===                                                      ===
! ===                                                      ===
! ============================================================
! ============================================================
! ============================================================
 CONTAINS

! =============================================================
! ===            Internal procedure ("PUBLIC")  : Getting   ===
! =============================================================
! Procedure 1 : getMinimumLongitude
! ---------------------------------
FUNCTION getMinimumLongitude() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = minLongitude

END FUNCTION

! Procedure 2 : getMaximumLongitude
! ---------------------------------
FUNCTION getMaximumLongitude() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = maxLongitude

END FUNCTION

! Procedure 3 : getMeanLongitude
! ------------------------------
FUNCTION getMeanLongitude() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = meanLongitude

END FUNCTION

! Procedure 4 : getMinimumLatitude
! ---------------------------------
FUNCTION getMinimumLatitude() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = minLatitude

END FUNCTION

! Procedure 5 : getMaximumLatitude
! ---------------------------------
FUNCTION getMaximumLatitude() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = maxLatitude

END FUNCTION

! Procedure 6 : getMeanLatitude
! ------------------------------
FUNCTION getMeanLatitude() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = meanLatitude

END FUNCTION

! Procedure 7 : getDeltaXInKm
! ----------------------------
FUNCTION getDeltaXInKm() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = deltaXInKm

END FUNCTION

! Procedure 8 : getDeltaYInKm
! ------------------------------
FUNCTION getDeltaYInKm() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = deltaYInKm

END FUNCTION

! Procedure 9 : getPi
! -------------------
FUNCTION getPi() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = pi

END FUNCTION

! Procedure 10 : getMeanXCoordinate
! ---------------------------------
FUNCTION getMeanXCoordinate() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = meanXCoordinate

END FUNCTION

! Procedure 11 : getMeanYCoordinate
! ------------------------------
FUNCTION getMeanYCoordinate() RESULT (value)

!     Declaration
!     - - - - - -
      REALType :: value

!     Body
!     - - -
      value = meanYCoordinate

END FUNCTION

! Procedure 12 : getIChangeCoordinate
! -----------------------------------
FUNCTION getIChangeCoordinate() RESULT (value)

!     Declaration
!     - - - - - -
      INTEGERType :: value

!     Body
!     - - -
      value = iChangeCoordinate

END FUNCTION

! Procedure 13 : getISpheric
! --------------------------
FUNCTION getISpheric() RESULT (value)

!     Declaration
!     - - - - - -
      INTEGERType :: value

!     Body
!     - - -
      value = iSpheric

END FUNCTION

! Procedure 14 : getGmshWithCoastRefinement
! -----------------------------------------
FUNCTION getGmshWithCoastRefinement() RESULT (value)

!     Declaration
!     - - - - - -
      LOGICAL :: value

!     Body
!     - - -
      value = gmshWithCoastRefinement

END FUNCTION

! =============================================================
! ===            Internal procedure ("PUBLIC")  : Setting   ===
! =============================================================
! Procedure 1 : setMinimumLongitude
! ---------------------------------

SUBROUTINE setMinimumLongitude(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      minLongitude = value

END SUBROUTINE

! Procedure 2 : setMaximumLongitude
! ---------------------------------

SUBROUTINE setMaximumLongitude(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      maxLongitude = value

END SUBROUTINE

! Procedure 3 : setMeanLongitude
! ------------------------------

SUBROUTINE setMeanLongitude(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      meanLongitude = value

END SUBROUTINE

! Procedure 4 : setMinimumLatitude
! ---------------------------------

SUBROUTINE setMinimumLatitude(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      minLatitude = value

END SUBROUTINE

! Procedure 5 : setMaximumLatitude
! ---------------------------------

SUBROUTINE setMaximumLatitude(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      maxLatitude = value

END SUBROUTINE

! Procedure 6 : setMeanLongitude
! ------------------------------

SUBROUTINE setMeanLatitude(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      meanLatitude = value

END SUBROUTINE

! Procedure 7 : setDeltaXInKm
! ----------------------------
SUBROUTINE setDeltaXInKm(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      deltaXInKm = value

END SUBROUTINE

! Procedure 8 : setDeltaYInKm
! ------------------------------
SUBROUTINE setDeltaYInKm(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      deltaYInKm = value

END SUBROUTINE

! Procedure 9 : setPi
! -------------------
SUBROUTINE setPi()

!     Body
!     - - -
      pi = 2. * ASIN(1.)

END SUBROUTINE

! Procedure 10 : setMeanXCoordinate
! ---------------------------------
SUBROUTINE setMeanXCoordinate(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      meanXCoordinate = value

END SUBROUTINE

! Procedure 11 : setMeanYCoordinate
! ------------------------------
SUBROUTINE setMeanYCoordinate(value)

!     Declaration
!     - - - - - -
      REALType, INTENT(IN) :: value

!     Body
!     - - -
      meanYCoordinate = value

END SUBROUTINE

! Procedure 12 : setIChangeCoordinate
! -----------------------------------
SUBROUTINE setIChangeCoordinate(value)

!     Declaration
!     - - - - - -
      INTEGERType, INTENT(IN) :: value

!     Body
!     - - -
      iChangeCoordinate = value

END SUBROUTINE

! Procedure 13 : setISpheric
! --------------------------
SUBROUTINE setISpheric(value)

!     Declaration
!     - - - - - -
      INTEGERType, INTENT(IN) :: value

!     Body
!     - - -
      iSpheric = value

END SUBROUTINE

! Procedure 14 : setGmshWithCoastRefinement
! -----------------------------------------
SUBROUTINE setGmshWithCoastRefinement(value)

!     Declaration
!     - - - - - -
      LOGICAL, INTENT(IN) :: value

!     Body
!     - - -
      gmshWithCoastRefinement = value

END SUBROUTINE

! =============================================================
! ===            Internal procedure ("PUBLIC")  : Others    ===
! =============================================================
! Procedure 1 : initialise
! ------------------------
SUBROUTINE initialise()

!     Declaration
!     - - - - - -
      REALType, PARAMETER :: zero = 0.

!     Body
!     - - -
      CALL setMinimumLongitude(zero)
      CALL setMinimumLatitude(zero)
      CALL setMaximumLongitude(zero)
      CALL setMaximumLatitude(zero)
      CALL setMeanLongitude(zero)
      CALL setMeanLatitude(zero)
      CALL setDeltaXInKm(zero)
      CALL setDeltaYInKm(zero)
      CALL setPi()
      CALL setMeanXCoordinate(zero)
      CALL setMeanYCoordinate(zero)
      CALL setIChangeCoordinate(0)
      CALL setISpheric(0)
      CALL setGmshWithCoastRefinement(.FALSE.)

END SUBROUTINE

! Procedure 2 : computeMeanLongitude
! ----------------------------------
SUBROUTINE computeMeanLongitude()

!     Body
!     - - -
      meanLongitude = 0.5 * ( minLongitude + maxLongitude )

END SUBROUTINE

! Procedure 3 : computeMeanLatitude
! ----------------------------------
SUBROUTINE computeMeanLatitude()

!     Body
!     - - -
      meanLatitude = 0.5 * ( minLatitude + maxLatitude )

END SUBROUTINE

END MODULE moduleCoordinateInformation

#
# * OPERATIONAL SYSTEMS
# *
# * Iridium
# *
# * This is the 'perfect' fully-deployed first-generation Iridium
# * system, which provides voice and low-rate data services.
# * Iridium was originally designed with 77 active satellites, and
# * so given the name 'Iridium', for the element with periodic
# * number 77 and 77 orbiting electrons.
# *
# * The Iridium constellation was later redesigned to reduce the
# * number of active satellites needed to 66 - but the name was
# * not changed to that of element 66: 'Dysprosium', which is Latin
# * for 'bad approach'.
# *
# * Designed for voice telephony and low-rate data. In the decade while
# * Iridium was being designed and built for Motorola, GSM terrestrial
# * mobile cellular telephony became widespread, removing the intended
# * 'business traveller' market and leading to a focus on specialist
# * industries in remote areas.
# *
# * Full constellation launched as of May 1998. Service offered
# * as of end of 1998. Filed for US Chapter 11 bankruptcy protection
# * August 1999, and later re-emerged as Iridium Satellite.
# *
# * A Walker polar star geometry. Note the 'orbital seam' where
# * the footprints of ascending (going north over the Equator) and
# * descending (going (south) satellites overlap more to ensure
# * continuous coverage.
# *
# * A replacement Iridium NEXT constellation being launched, with
# * satellites built by Thales Alenia Space in France.
# *
# * See http://www.iridium.com/
# *
# * Uses intersatellite links, which are not yet simulated here.

# $Id: iridium-66.tcl,v 1.13 2016/08/16 02:02:59 lloydwood Exp $

set SATS_PER_PLANE 11
set NUM_PLANES 6
set INTERPLANE_SPACING 31.6

# setup orbital elements
set a [expr 780.0+$RADIUS_OF_EARTH]
set e 0.0
set inc 86.4
set omega 0.0

set coverage_angle 8.2

# compute period of orbit
set T_per [expr 2 * $PI * pow($a,1.5) / sqrt($MU)]


satellites GV_BEGIN
for {set j 0} {$j < $NUM_PLANES} {incr j} {
	set Omega [expr $j * $INTERPLANE_SPACING]
	for {set i 0} {$i < $SATS_PER_PLANE} {incr i} {
		if { $j % 2 == 0} {
			set plane_offset 0
		} else {
			set plane_offset [expr $T_per / $SATS_PER_PLANE / 2.0]
		}
		set T [expr $T_per * $i / $SATS_PER_PLANE + $plane_offset]
		set n [satellites LOAD $a $e $inc $Omega $omega $T "Iridium ($j, $i)"]
		if {$i > 0} {satellites ORBIT_SET $n 0}
	}
}
satellites GV_END

##
# Iridium (0, 0)Iridium (0, 1)Iridium (0, 2)Iridium (0, 3)Iridium (0, 4)Iridium (0, 5)
# Iridium (0, 6)Iridium (0, 7)Iridium (0, 8)Iridium (0, 9)Iridium (0, 10)
# Iridium (1, 0)Iridium (1, 1)Iridium (1, 2)Iridium (1, 3)Iridium (1, 4)Iridium (1, 5)
# Iridium (1, 6)Iridium (1, 7)Iridium (1, 8)Iridium (1, 9)Iridium (1, 10)
# Iridium (2, 0)Iridium (2, 1)Iridium (2, 2)Iridium (2, 3)Iridium (2, 4)Iridium (2, 5)
# Iridium (2, 6)Iridium (2, 7)Iridium (2, 8)Iridium (2, 9)Iridium (2, 10)
# Iridium (3, 0)Iridium (3, 1)Iridium (3, 2)Iridium (3, 3)Iridium (3, 4)Iridium (3, 5)
# Iridium (3, 6)Iridium (3, 7)Iridium (3, 8)Iridium (3, 9)Iridium (3, 10)
# Iridium (4, 0)Iridium (4, 1)Iridium (4, 2)Iridium (4, 3)Iridium (4, 4)Iridium (4, 5)
# Iridium (4, 6)Iridium (4, 7)Iridium (4, 8)Iridium (4, 9)Iridium (4, 10)
# Iridium (5, 0)Iridium (5, 1)Iridium (5, 2)Iridium (5, 3)Iridium (5, 4)Iridium (5, 5)
# Iridium (5, 6)Iridium (5, 7)Iridium (5, 8)Iridium (5, 9)Iridium (5, 10)
#
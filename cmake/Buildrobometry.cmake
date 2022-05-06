# Copyright (C) 2021 iCub Facility, Istituto Italiano di Tecnologia
# Authors: Nicolò Genesio <nicolo.genesio@iit.it>
# CopyPolicy: Released under the terms of the LGPLv2.1 or later, see LGPL.TXT

include(YCMEPHelper)

find_or_build_package(YARP QUIET)
find_or_build_package(matioCpp QUIET)

ycm_ep_helper(robometry TYPE GIT
              STYLE GITHUB
              REPOSITORY robotology/robometry.git
              TAG master
              COMPONENT dynamics
              FOLDER src
              DEPENDS YCM
                      YARP
                      matioCpp)

set(robometry_CONDA_DEPENDENCIES boost-cpp libmatio)

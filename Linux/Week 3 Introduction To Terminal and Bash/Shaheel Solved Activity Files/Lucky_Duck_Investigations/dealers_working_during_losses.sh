#!/bin/bash

egrep -i '05:00:00 AM|08:00:00 AM|02:00:00 PM|08:00:00 PM|11:00:00 PM' 0310_Dealer_schedule >> Dealers_working_during_losses
egrep -i '05:00:00 AM|08:00:00 AM|02:00:00 PM|08:00:00 PM|11:00:00 PM' 0312_Dealer_schedule >> Dealers_working_during_losses
egrep -i '05:00:00 AM|08:00:00 AM|02:00:00 PM' 0315_Dealer_schedule >> Dealers_working_during_losses







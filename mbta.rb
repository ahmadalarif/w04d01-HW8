


def stops_between_stations (start_line, start_station, end_line, end_station)
    $subway ={ 
        red:["South Station", "Park Street", "Kendall", "Central", "Harvard","Porter", "Davis", "Alewife"],
        green:["Government Center", "Park Street", "Boylston", "Arlington","Copley", "Hynes", "Kenmore"],
        orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown", "Back Bay", "Forest Hills"]
        }

        $startStationIndex = $subway[startLine].index(startStation)
    $endStationIndex = $subway[endLine].index(endStation)

    if startLine === endLine
      return ($startStationIndex - $endStationIndex).abs
    end

    $startLineParkStreetIndex = $subway[startLine].index('Park Street')
 	  $tripToParkStreet = ($startStationIndex - $startLineParkStreetIndex).abs
 	  $endLineParkStreetIndex = $subway[endLine].index('Park Street')
    $tripToDestination = ($endStationIndex - $endLineParkStreetIndex).abs
    $totalTrip = $tripToParkStreet + $tripToDestination
    return $totalTrip
end




p stops_between_stations('red', 'Alewife', 'red', 'South Station') # 7
p stops_between_stations('red', 'Alewife', 'red', 'Alewife') # 0
p stops_between_stations('red', 'South Station', 'green', 'Kenmore') # 6 



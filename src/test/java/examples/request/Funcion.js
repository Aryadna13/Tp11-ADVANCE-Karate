
function(convertidor){
timeEntries.forEach(function(entry) {if (entry.timeInterval && entry.timeInterval.duration) {var duration = entry.timeInterval.duration;var match = duration.match(/^PT(\d+H)?(\d+M)?(\d+S)?$/);if (match) {var hours = match[1] ? parseInt(match[1].replace('H', '')) : 0;var minutes = match[2] ? parseInt(match[2].replace('M', '')) : 0;var seconds = match[3] ? parseInt(match[3].replace('S', '')) : 0;totalSeconds += (hours * 3600) + (minutes * 60) + seconds;}}})
}


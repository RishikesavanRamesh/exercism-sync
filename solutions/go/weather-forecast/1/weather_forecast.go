// Package weather will forecast the weather of a city.
package weather

// CurrentCondition is the state of the current time.
var CurrentCondition string

// CurrentLocation is the current location.
var CurrentLocation string

// Forecast function takes city and condition and returns info string.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}

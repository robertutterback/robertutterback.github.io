from abc import ABC, abstractmethod

class Building(ABC):
    """A generic building.

       longer description."""

    def __init__(self, address, sqft):
        self._addr = address
        self._sqft = sqft

    def __str__(self):
        return "Address: " + self._addr

    def __eq__(self, other):
        return type(self) == type(rhs) and self._addr == other._addr

    def get_address(self):
        return self._addr
    def get_sqft(self):
        return self._sqft
    def set_address(self, address):
        self._addr = address

    def demolish(self):
        self._sqft = 0
        print("BOOM")

class Apartment(Building):
    def __init__(self, address, sqft, num_units):
        super().__init__(address, sqft)
        self._nunits = num_units
    def get_num_units(self):
        return self._nunits
class Skyscraper(Building):
    def __init__(self, address, sqft, num_floors):
        super().__init__(address, sqft)
        self._nfloors = num_floors
    def get_num_floors(self):
        return self._nfloors
    def demolish(self):
        self._sqft = 0
        print("Slow dismantling and controlled demolition.")


class Car:
    def __init__(self, color):
        self._color = color
    def demolish(self):
        print("CRUNCH")


if __name__ == "__main__":
    b1 = Apartment("123 Fake Street", 100, 5)
    b2 = Skyscraper("332 1st St", 10000, 82)
    c = Car("yellow")

    buildings = [b1, b2, c]
    for b in buildings:
        b.demolish()

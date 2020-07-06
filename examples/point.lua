require("ecls")

Class("Point", {
  __init__ = function (self, x, y)
    self.x = x or 0
    self.y = y or 0
  end,

  setX = function (self, x)
    assert(x, "No value for X")
    self.x = x
  end,

  setY = function (self, y)
    assert(y, "No value for Y")
    self.y = y
  end
})

Class("Rect", {
  __init__ = function (self, pos, w, h)
    self.x = pos.x
    self.y = pos.y
    self.w = w or 0
    self.h = h or 0
  end,

  setW = function (self, w)
    assert(w, "No value for width")
    self.w = w
  end,

  setH = function (self, h)
    assert(h, "No value for height")
    self.h = h
  end
}, Point)

Class("Rombo", {
  __init__ = function (self, rect, r)
    self.x = rect.x
    self.y = rect.y
    self.w = rect.w
    self.h = rect.h
    self.r = r or 180
  end,

  setR = function (self, r)
    assert(r, "No value for fotation")
    self.r = r
  end
}, Rect)

local p  = Point(10, 20)
local re = Rect(p, 400, 400)
local ro = Rombo(re)

print("Point:")
for k, v in pairs(p) do print(k, v) end
print("Rect:")
for k, v in pairs(re) do print(k, v) end
print("Rombo:")
for k, v in pairs(ro) do print(k, v) end
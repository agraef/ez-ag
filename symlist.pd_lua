local symlist = pd.Class:new():register("symlist")

function symlist:initialize(sel, atoms)
   self.inlets = 1
   self.outlets = 1
   self.syms = {}
   if type(atoms[1]) == "string" then
      i = 1
      for line in io.lines(atoms[1]) do
	 self.syms[i] = line
	 i = i+1
      end
   end
   return true
end

function symlist:in_1_bang()
   self:outlet(1, "list", self.syms)
end

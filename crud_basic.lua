--basic crud app :)

--TODO: FIX EVERYTHING LMAO
function main()
	print("Press \"c\" to create a file, \"r\" to read, \"u\" to input information, or \"d\" to delete. Press \"x\" to exit\n")
	::start::
	arg = io.read()
	if arg == "c" then
		print("Input the filename you would like created\n")
		local filename = io.read()
		--creates file
		io.open(filename, "w")
		print("Input data now\n")
		--reads data from stdin
		local data = io.read()
		--writes data to file
		io.write(data, filename)
		io.input():close()
		print("\nFile written and closed\n")
	elseif arg == r then
		print("Input the filename you want to read\n")
		--idk if this will work lmao
		local filename = io.read()
		io.read(filename)
		goto start
	elseif arg == u then
		print("Input the filename you want information to go into\n")
		local filename = io.read()
		print("Input data now\n")
		local data = io.read()
		io.write(data, filename)
		io.input():close()
		print("File written and closed\n")
	elseif arg == d then
		print("Input the filename you want deleted\n")
		local filename = io.read()
		os.remove(filename)
		print("File deleted")
	elseif arg == x then
		goto ending
	else print("Please input an option, or \"x\" to exit\n")
		goto start
	end
::ending::
end

main()

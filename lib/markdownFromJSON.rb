###
# This program reads the JSON specification files and creates the Markdown files (minus the examples). 
# Location: https://github.com/sumurthy/md_apispec
###
require 'pathname'
require 'logger'
require 'json'

module SpecMaker

	# Iterate over all the resource JSON files.
	LOG_FILE = '../../logs/genMdFiles_log.txt'
	begin
		File.delete(LOG_FILE)
	rescue => err
	    #Ignore this error
	end
	@mdlines = []

	@logger = Logger.new(LOG_FILE)
	@logger.level = Logger::DEBUG
	@resource = ''

	ENUMS = 'jsonFiles/enums/enums.json'

	### 
	# Load up all the known existing enums.
	##
	@enumHash = {}
	@enumHash = JSON.parse File.read(ENUMS)
	@gsType = ''
	JSON_SOURCE_FOLDER = "jsonFiles"
	MARKDOWN_OUTPUT_FOLDER = "markdowns/"
	EXAMPLES_FOLDER = "examples/"
	HEADER1 = '# '
	HEADER2 = '## '
	HEADER3 = '### '
	HEADER4 = '#### '
	HEADER5 = '##### '
	GETTERSETTER = 'Getter and Setter Examples'
	GETTER = 'Getter Examples'
	SETTER = 'Setter Examples'
	BACKTOMETHOD = '[Back](#methods)'
	NEWLINE = "\n"
	BACKTOPROPERTY = NEWLINE + '[Back](#properties)'
	PIPE = '|'
	TWONEWLINES = "\n\n"
	PROPERTY_HEADER = "| Property       | Type    |Description|Notes |" + NEWLINE
	TABLE_2ND_LINE =  "|:---------------|:--------|:----------|:-----|" + NEWLINE
	PARAM_HEADER = "| Parameter       | Type    |Description|" + NEWLINE
	TABLE_2ND_LINE_PARAM =  "|:---------------|:--------|:----------|" + NEWLINE

	RELATIONSHIP_HEADER = "| Relationship | Type    |Description|Notes |" + NEWLINE
	METHOD_HEADER = "| Method           | Return Type    |Description|Notes |" + NEWLINE
	SIMPLETYPES = %w[int string object object[][] double bool number void]
	
	def self.uncapitalize (str="")
		if str.length > 0
	    	str[0, 1].downcase + str[1..-1]
	    else
	    	str
	    end
	end

	# Write properties and methods to the final array.
	def self.push_property  (prop = {})
		# Add read-only and possible Enum values from the list. 
		
		finalDesc = prop[:isReadOnly] ? prop[:description]  + ' Read-only.' : prop[:description]
		appendEnum = ''
		if (prop[:enumNameJs] != nil) && (@enumHash.has_key? prop[:enumNameJs])
			if @enumHash[prop[:enumNameJs]].values[0] == "" || @enumHash[prop[:enumNameJs]].values[0] == nil
				appendEnum = " Possible values are: " + @enumHash[prop[:enumNameJs]].keys.join(', ') + "."
			else
				appendEnum = " Possible values are: " + @enumHash[prop[:enumNameJs]].map{|k,v| "`#{k}` #{v}"}.join(',') 
			end
			finalDesc = finalDesc + appendEnum
		end
		# If the type is of	an object, then provide markdown link.
		if SIMPLETYPES.include? prop[:dataType] 	
			dataTypePlusLink = prop[:dataType] 	
		else			
			dataTypePlusLink = "[" + prop[:dataType] + "](" + prop[:dataType].downcase + ".md)"
		end

		@mdlines.push (PIPE + prop[:name] + PIPE + dataTypePlusLink + PIPE + finalDesc + PIPE + PIPE) + NEWLINE
	end

	# Write methods to the final array.
	def self.push_method (method = {})

		# If the type is of	an object, then provide markdown link.
		if SIMPLETYPES.include? method[:returnType]
			dataTypePlusLink = method[:returnType]
		else			
			dataTypePlusLink = "[" + method[:returnType] + "](" + method[:returnType].downcase + ".md)"
		end
		# Add anchor links to method. 
		str = method[:signature].strip
		replacements = [ [" ", "-"], ["[", ""], ["]", ""],["(", ""], [")", ""], [",", ""], [":", ""] ]				
		replacements.each {|replacement| str.gsub!(replacement[0], replacement[1])}
		methodPlusLink = "[" + method[:signature].strip + "](#" + str.downcase + ")"
		@mdlines.push (PIPE + methodPlusLink + PIPE + dataTypePlusLink + PIPE + method[:description] + PIPE+PIPE) + NEWLINE
	end

	# Write methods details and parameters to the final array.	
	def self.push_method_details (method = {}, examples = [])

		@mdlines.push HEADER3 + method[:signature] + NEWLINE	
		@mdlines.push method[:description] + TWONEWLINES	
		@mdlines.push HEADER4 + "Syntax" + NEWLINE + '```js' + NEWLINE
		@mdlines.push method[:syntax] + NEWLINE + '```' + TWONEWLINES
		@mdlines.push HEADER4 + "Parameters" + NEWLINE

		if method[:parameters] !=nil  			

			@mdlines.push PARAM_HEADER + TABLE_2ND_LINE_PARAM 
			method[:parameters].each do |param|
				# Append optional and enum possible values (if applicable).
				finalPDesc = param[:isRequired] ? param[:description] : 'Optional. ' + param[:description]
				appendEnum = ''
				if (param[:enumNameJs] != nil) && (@enumHash.has_key? param[:enumNameJs])

					if @enumHash[param[:enumNameJs]].values[0] == "" || @enumHash[param[:enumNameJs]].values[0] == nil
						appendEnum = " " + " Possible values are: " + @enumHash[param[:enumNameJs]].keys.join(', ')  
					else
						appendEnum = " Possible values are: " + @enumHash[param[:enumNameJs]].map{|k,v| "`#{k}` #{v}"}.join(',')
					end
					finalPDesc = finalPDesc + appendEnum
				end
				@mdlines.push (PIPE + param[:name] + PIPE + param[:dataType] + PIPE + finalPDesc + PIPE) + NEWLINE	
			end
		else
			@mdlines.push "None"  + NEWLINE
		end

		@mdlines.push NEWLINE + HEADER4 + "Returns" + NEWLINE

		if SIMPLETYPES.include? method[:returnType]
			dataTypePlusLink = method[:returnType]
		else			
			dataTypePlusLink = "[" + method[:returnType] + "](" + method[:returnType].downcase + ".md)"
		end
		@mdlines.push dataTypePlusLink + NEWLINE
		

		@mdlines.push NEWLINE + HEADER4 + 'Examples' + NEWLINE
		# 
		if	@exampleFileFound == true
			exampleFound	 = false
			examples.each_with_index do |exampleLine, i|
				if exampleLine.chomp.strip.include? method[:signature]
					exampleFound	 = true			
					next
				end
				if exampleFound && exampleLine.include?('#')
					break
				end
				if exampleFound	 
					@mdlines.push exampleLine
				end
			end
			if !exampleFound
				@mdlines.push "```js" + TWONEWLINES
				@mdlines.push "```" + NEWLINE
				@logger.error("....Example not found for method: #{method[:signature]}, #{@resource}  ") 
			end
		end
		@mdlines.push NEWLINE + BACKTOMETHOD + TWONEWLINES 
		
	end

	# Add getter and setter examples
	def self.push_getter_setters (examples = [] )
		getterOrSetterFound	 = false

		examples.each_with_index do |exampleLine, i|
			if (exampleLine.chomp.strip.downcase.include? "getter") || (exampleLine.chomp.strip.downcase.include? "setter")
				getterOrSetterFound = true
					if (exampleLine.chomp.strip.downcase.include? "getter") && (exampleLine.chomp.strip.downcase.include? "setter")
						@mdlines.push HEADER4 + GETTERSETTER + NEWLINE 
					elsif (exampleLine.chomp.strip.downcase.include? "getter") 
						@mdlines.push HEADER4 + GETTER + NEWLINE
					else
						@mdlines.push HEADER4 + SETTER + NEWLINE
					end
				next
			end
			if getterOrSetterFound && exampleLine.include?('#')
				break
			end
			if getterOrSetterFound	 
				@mdlines.push exampleLine
			end
		end
		if getterOrSetterFound 
			@mdlines.push BACKTOPROPERTY + NEWLINE
		end
	end

	# Determine the type getter and setter links to be used. 
	def self.determine_getter_setter_type (examples = [])
		gsType = 'none'
		examples.each_with_index do |exampleLine, i|
			if (exampleLine.chomp.strip.downcase.include? "getter") || (exampleLine.chomp.strip.downcase.include? "setter")
				if (exampleLine.chomp.strip.downcase.include? "getter") && (exampleLine.chomp.strip.downcase.include? "setter")
					gsType = 'getterandsetter'
				elsif (exampleLine.chomp.strip.downcase.include? "getter") 
					gsType = 'getter'	
				else
					gsType = 'setter'
				end
			end
		end
		gsType
	end

	# Conversion to specification 
	def self.convert_to_spec (item=nil)
		@mdlines = []
		@jsonHash = JSON.parse(item, {:symbolize_names => true})
		# Obtain the resource name. Read the examples file, if it exists. 
		@resource = uncapitalize(@jsonHash[:name])
		@logger.debug(".")	
		@logger.debug("...............Report for: #{@resource}...........")	

		example_lines = ''
		@gsType = ''
		@exampleFileFound = false
		begin
			example_lines = File.readlines(File.join(EXAMPLES_FOLDER, @resource+".md"))
			@gsType = determine_getter_setter_type example_lines
			@exampleFileFound = true
		rescue => err
			@logger.error("....Example File does not exist for: #{@current_object}")
		end

		@logger.debug("....Example Staus: Found example for #{@gsType}....")	
		if @gsType != 'getterandsetter' 
			@logger.warn("....Either Getter or Setter or both not found : [#{@gsType} found] for #{@resource}  ") 
		end
		propreties = @jsonHash[:properties]

		if propreties != nil && propreties.length > 1 
			propreties = propreties.sort_by { |v| v[:name] }
		end
		methods = @jsonHash[:methods]
		if methods != nil && methods.length > 1 
			methods = methods.sort_by { |v| v[:name] }
		end

		@mdlines.push HEADER1 + @jsonHash[:name] + TWONEWLINES
		@mdlines.push @jsonHash[:description] + TWONEWLINES

		isRelation, isProperty, isMethod = false, false, false 

		if propreties != nil
			propreties.each do |prop|
				
				if !prop[:isRelationship]
				   isProperty = true
				end

#				puts " #{@resource}..... #{prop[:name]} ..  #{prop["isrelationship"]}... #{prop[:isCollection]} .. #{prop[:description]}"
				if prop[:isRelationship]			  
				   isRelation = true
				end
			end
		end

		if methods != nil
			isMethod = true
		end

		@logger.debug("....Is there: property: #{isProperty}, relationship: #{isRelation}, method: #{isMethod} ..........")	

		# Add property table. 	

		case @gsType
		when 'getter'
			@mdlines.push HEADER2 + '[Properties](#getter-examples)' + NEWLINE
		when 'setter'
			@mdlines.push HEADER2 + '[Properties](#setter-examples)' + NEWLINE
		when 'getterandsetter'
			@mdlines.push HEADER2 + '[Properties](#getter-and-setter-examples)' + NEWLINE
		else	
			@mdlines.push HEADER2 + 'Properties' + NEWLINE
		end	

		if isProperty
			@mdlines.push PROPERTY_HEADER + TABLE_2ND_LINE 
			propreties.each do |prop|
				if !prop[:isRelationship]
					@logger.debug("....Processing property: #{prop[:name]} ..........")	
				   push_property prop
				end
			end
		else
			@mdlines.push "None"  + NEWLINE
		end		

		# Add Relationship table. 
		@mdlines.push NEWLINE
		@mdlines.push HEADER2 + 'Relationships' + NEWLINE


		if isRelation
			@mdlines.push RELATIONSHIP_HEADER + TABLE_2ND_LINE 
			propreties.each do |prop|
				if prop[:isRelationship]
					@logger.debug("....Processing relationship: #{prop[:name]} ..........")		
				   push_property prop
				end
			end
		else
			@mdlines.push "None"  + TWONEWLINES
		end		

		# Add method table. 
		@mdlines.push NEWLINE + HEADER2 + 'Methods' + NEWLINE

		if isMethod
			@mdlines.push NEWLINE + METHOD_HEADER + TABLE_2ND_LINE 
			methods.each do |mtd|
				@logger.debug("....Processing method: #{mtd[:name]} ..........")						
				push_method mtd
			end
		else
			@mdlines.push "None"  + TWONEWLINES
		end	

		# Add each API method details.	
		if isMethod || (@gsType != 'none' && @gsType != '') 
			@mdlines.push NEWLINE + HEADER2 + 'API Specification' + TWONEWLINES
		end	

		if isMethod
			methods.each do |mtd|
				push_method_details mtd, example_lines
			end
	        
		end
		if @gsType != 'none' && @gsType != '' 
			push_getter_setters example_lines
		end

		# Write the output file. 
		outfile = MARKDOWN_OUTPUT_FOLDER + @resource.downcase + '.md'
		file=File.new(outfile,'w')
		@mdlines.each do |line|
			file.write line
		end
	end

	# Main loop. 
	Dir.foreach(JSON_SOURCE_FOLDER) do |item|
		next if item == '.' or item == '..'
		fullpath = JSON_SOURCE_FOLDER + '/' + item.downcase

		if File.file?(fullpath)
			convert_to_spec File.read(fullpath)
		end
	end

end
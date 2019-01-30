import json
import io
import sys
with open('version.json', 'r') as f:
	data = json.load(f)
	print data
	data["install"]["version"] = "1.0.0.{0}".format(sys.argv[1])
	
	print data
with open('version.json','w') as f:
	json.dump(data, f)

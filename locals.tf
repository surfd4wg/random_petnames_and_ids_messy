locals {
    common_tags = {
        Name = "${var.myname}-${random_id.server.hex}" 
	    Environment = var.myenv
        Department  = var.mydept
        Organization = var.myorg
        Stack       = var.mystack
        "***RANDOMid***" = "${var.myname}-${random_id.server.id}" 
        "***RANDOMhex***" = "${var.myname}-${random_id.server.hex}" 
        "***RANDOMdec***" = "${var.myname}-${random_id.server.dec}" 
        "***PETid***" = "${var.myname}-${random_pet.server.id}" 
        RandomPETName = "${random_pet.server.id}-${random_id.server.id}"
        #"***PEThex***" = "${var.myname}-${random_pet.server.hex}" 
        #"***PETdec***" = "${var.myname}-${random_pet.server.dec}" 
        "***WORKSPACE***" = terraform.workspace
        CUSTName = "{var.custname}"
        VENDORName = "${var.vendorname}"
        FQDN = "${var.custname}.${var.vendorname}.${random_pet.server.id}.${random_id.server.hex}.${var.basedns}"
		}
	}

resource "prismacloud_compliance_standard" "tf-custom-compliance-standard-001" {
    name = "tf-custom-compliance-standard-001"
    description = "Made by Terraform"
}

resource "prismacloud_compliance_standard_requirement" "tf-custom-compliance-standard-requirement-001" {
    cs_id = prismacloud_compliance_standard.tf-custom-compliance-standard-001.cs_id
    name = "tf-custom-requirement"
    description = "Made by Terraform"
    requirement_id = "1.001"
}

resource "prismacloud_compliance_standard_requirement_section" "tf-custom-compliance-standard-section-001" {
    csr_id = prismacloud_compliance_standard_requirement.tf-custom-compliance-standard-requirement-001.csr_id
    section_id = "Section 1"
    description = "Section description"
}

resource "prismacloud_compliance_standard_requirement_section" "tf-custom-compliance-standard-section-002" {
    csr_id = prismacloud_compliance_standard_requirement.tf-custom-compliance-standard-requirement-001.csr_id
    section_id = "Section 2"
    description = "Section description"
}

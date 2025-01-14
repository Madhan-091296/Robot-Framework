import xmlschema

# Paths to the XML and XSD files
xml_file = "XMLToBeValidated.xml"
xsd_file = "XSD_with_some_validations.xsd"


def validate_xml_step_by_step(xml_path, xsd_path):
    try:
        # Load the XSD schema
        schema = xmlschema.XMLSchema(xsd_path)

        # Validate the XML file against the schema
        errors = schema.iter_errors(xml_path)

        print("Validation in Progress:\n")
        issue_count = 0

        for error in errors:
            issue_count += 1
            print(f"Issue {issue_count}:")
            print(f"  Error Message: {error.message}")

            # Check if line and column information is available
            if hasattr(error, 'line') and hasattr(error, 'column'):
                print(f"  Line: {error.line}, Column: {error.column}")
            else:
                print("  Line and Column: Not available")

            # Display the error path and reason if available
            if hasattr(error, 'path'):
                print(f"  Error Path: {error.path}")
            if hasattr(error, 'reason'):
                print(f"  Error Context: {error.reason}")
            print("\n---\n")

        if issue_count == 0:
            print("The XML file is valid according to the XSD schema.")
        else:
            print(f"Total Issues Found: {issue_count}")

    except xmlschema.XMLSchemaException as xsd_error:
        print(f"Invalid XSD Schema: {xsd_error}")
    except FileNotFoundError as file_error:
        print(f"File Error: {file_error}")
    except Exception as ex:
        print(f"Unexpected Error: {ex}")


# Run validation
validate_xml_step_by_step(xml_file, xsd_file)
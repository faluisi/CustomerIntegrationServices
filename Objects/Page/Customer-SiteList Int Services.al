page 50041 "Customer-Site Integration List"
{
    ApplicationArea = Basic, Suite, Service;
    Caption = 'Customer-Site';

    Editable = true;
    PageType = List;
    PromotedActionCategories = 'New,Process,Report,Approve,New Document,Request Approval,Customer,Navigate,Prices & Discounts';

    RefreshOnActivate = true;
    SourceTable = "Customer-Site";
    UsageCategory = Lists;


    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;

                }
                field("Site Code"; "Site Code")
                {
                    ApplicationArea = All;

                }
                field("Site Name"; "Site Name")
                {
                    ApplicationArea = Basic, Suite;

                    Visible = false;
                }
                field(Operator; Operator)
                {
                    ApplicationArea = Basic, Suite;


                }
                field(Address; Address)
                {
                    ApplicationArea = Basic, Suite;

                }


                field(City; City)
                {
                    ApplicationArea = Suite;

                }

                field("Post Code"; "Post Code")
                {
                    ApplicationArea = Suite;

                }
                field("Country/Region Code"; "Country/Region Code")
                {
                    ApplicationArea = Suite;

                }
                field("SubGroup"; SubGroup)
                {
                    Caption = 'SubGroup Customer';
                    ApplicationArea = Suite;



                }

                field("Group"; Group)
                {
                    Caption = 'Group Customer';
                    ApplicationArea = Suite;


                }
                field(Status; Status)
                {
                    ApplicationArea = Suite;
                }
                field("Current Status"; "Current Status")
                {
                    ApplicationArea = Suite;
                }
                field("Category"; Category)
                {
                    ApplicationArea = Suite;
                }
                field("Operator Name";
                "Operator Name")
                {
                    ApplicationArea = Suite;
                }
                field("Business Name";
                "Business Name")
                {
                    ApplicationArea = Suite;
                }
                field("Anniversary";
                "Anniversary")
                {
                    ApplicationArea = Suite;
                }
                field("Cardinal Points";
                "Cardinal Points")
                {
                    ApplicationArea = Suite;
                }
                field("Area";
                "Area")
                {
                    ApplicationArea = Suite;
                }
                field("Region";
                "Region")
                {
                    ApplicationArea = Suite;
                }
                field("Central Place";
                "Central Place")
                {
                    ApplicationArea = Suite;
                }
                field("Municipal";
                "Municipal")
                {
                    ApplicationArea = Suite;
                }

            }
        }

    }



}


page 50043 "FixedAssets IntegrationList"
{
    ApplicationArea = Basic, Suite, Service;
    Caption = 'Fixed Assets';

    Editable = true;
    PageType = List;
    PromotedActionCategories = 'New,Process,Report,Approve,New Document,Request Approval,Customer,Navigate,Prices & Discounts';
    QueryCategory = 'Fixed Assets';
    RefreshOnActivate = true;
    SourceTable = "Fixed Asset";
    UsageCategory = Lists;

    AboutTitle = 'About fixed assets';

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field("Serial No."; "Serial No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
                field(Location; Location)
                {
                    ApplicationArea = Basic, Suite;


                }
                field("Hall"; "Hall")
                {

                    ApplicationArea = All;
                }
                field("Group"; "Group")
                {
                    ApplicationArea = All;

                }
                field("Hall Status"; "Hall Status")
                {
                    ApplicationArea = All;
                }


                field("Operator Name"; "Operator Name")
                {
                    ApplicationArea = All;
                }
                field("Business Name"; "Business Name")
                {
                    ApplicationArea = All;
                }

            }
        }

    }



}


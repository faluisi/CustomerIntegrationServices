page 50042 "Cust-Site-OperatorIntegList"
{
    ApplicationArea = Basic, Suite, Service;
    Caption = 'Customer-Site-Operator';

    Editable = true;
    PageType = List;
    PromotedActionCategories = 'New,Process,Report,Approve,New Document,Request Approval,Customer,Navigate,Prices & Discounts';

    RefreshOnActivate = true;
    SourceTable = "Cust-Op-Site";
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
                field("Operator No."; "Operator No.")
                {
                    ApplicationArea = Basic, Suite;

                    Visible = false;
                }




            }
        }

    }



}


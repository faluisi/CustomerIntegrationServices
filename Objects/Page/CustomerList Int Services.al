page 50040 "Customer Integration List"
{
    ApplicationArea = Basic, Suite, Service;
    Caption = 'Customers';

    Editable = true;
    PageType = List;
    PromotedActionCategories = 'New,Process,Report,Approve,New Document,Request Approval,Customer,Navigate,Prices & Discounts';
    QueryCategory = 'Customer List';
    RefreshOnActivate = true;
    SourceTable = customer;
    UsageCategory = Lists;

    //AboutTitle = 'About customers';
    //AboutText = 'Here you overview all registered customers, their balances, and the sales statistics. With [Customer Templates](?page=1381 "Opens the Customer Templates") you can quickly create new customers having common details defined by the template.';

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
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s name. This name will appear on all sales documents for the customer.';
                }
                field("Post Code"; "Post Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the postal code.';

                }
                field("Country/Region Code"; "Country/Region Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the country/region of the address.';

                }
                field("Phone No."; "Phone No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the customer''s telephone number.';
                }


                field("Salesperson Code"; "Salesperson Code")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies a code for the salesperson who normally handles this customer''s account.';

                }

                field("Currency Code"; "Currency Code")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the default currency for the customer.';

                }



                field(Blocked; Blocked)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that the related record is blocked from being posted in transactions, for example a customer that is declared insolvent or an item that is placed in quarantine.';
                    Visible = false;
                }





                field("Ship-to Code"; "Ship-to Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the code for another shipment address than the customer''s own address, which is entered by default.';

                }

                field("Shipping Agent Code"; "Shipping Agent Code")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the code for the shipping agent who is transporting the items.';

                }

                field("Balance (LCY)"; "Balance (LCY)")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the payment amount that the customer owes for completed sales. This value is also known as the customer''s balance.';


                }
                field("Balance Due (LCY)"; "Balance Due (LCY)")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies payments from the customer that are overdue per today''s date.';


                }
                field("Sales (LCY)"; "Sales (LCY)")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the total net amount of sales to the customer in LCY.';
                }
                field("Payments (LCY)"; "Payments (LCY)")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the sum of payments received from the customer.';
                }

            }
        }

    }



}


page 50044 "Item List by Location"
{

    ApplicationArea = All;
    Caption = 'Item List by Location';

    Editable = false;
    PageType = List;
    SourceTable = "Stockkeeping Unit";
    SourceTableTemporary = true;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(ItemList)
            {
                field("Item No."; rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the item number to which the SKU applies.';
                }
                field("Location Code"; rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the location code (for example, the warehouse or distribution center) to which the SKU applies.';
                }
                field(Description; rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description from the Item Card.';
                }
                field(Inventory; rec.Inventory)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies for the SKU, the same as the field does on the item card.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        ItemInventory: Query "Item Inventory by Location";
        LocFilter: Text;
        Itemfilter: Text;
    begin

        LocFilter := rec.GETFILTER("Location Code");
        Itemfilter := rec.GETFILTER("Item No.");

        IF LocFilter <> '' THEN
            ItemInventory.SetFilter(ItemInventory.Location_Code, LocFilter);

        IF Itemfilter <> '' THEN
            ItemInventory.SetFilter(ItemInventory.No, Itemfilter);

        ItemInventory.OPEN;
        WHILE ItemInventory.READ DO BEGIN
            rec."Item No." := ItemInventory.No;
            rec."Location Code" := ItemInventory.Location_Code;

            rec.Inventory := ItemInventory.Inventory;
            IF NOT rec.INSERT THEN
                rec.MODIFY;

        END;
    end;




}


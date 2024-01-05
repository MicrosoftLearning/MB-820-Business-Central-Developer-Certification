page 50100 Items
{
    APIGroup = 'powerBI';
    APIPublisher = 'contoso';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'items';
    DelayedInsert = true;
    EntityName = 'item';
    EntitySetName = 'items';
    PageType = API;
    SourceTable = Item;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(no; Rec."No.")
                {
                    Caption = 'Item No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Item Description';
                }
                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(unitCost; Rec."Unit Cost")
                {
                    Caption = 'Unit Cost';
                }
                field(blocked; Rec.Blocked)
                {
                    Caption = 'Blocked';
                }
                field(itemCategoryCode; Rec."Item Category Code")
                {
                    Caption = 'Item Category Code';
                }
            }
        }
    }
}

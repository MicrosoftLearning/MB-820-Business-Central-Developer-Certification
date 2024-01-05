table 50100 VendorRating
{
    Caption = 'Vendor Rating';
    DataClassification = CustomerContent;
    LookupPageId = "VendorRating List";

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Rating Code';
        }
        field(2; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Rating Description';
        }
    }
    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}

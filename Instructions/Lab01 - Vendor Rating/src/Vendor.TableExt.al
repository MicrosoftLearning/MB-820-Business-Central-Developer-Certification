tableextension 50100 Vendor extends Vendor
{
    fields
    {
        field(50100; "Vendor Rating"; Code[10])
        {
            Caption = 'Vendor Rating';
            DataClassification = CustomerContent;
            TableRelation = VendorRating;
        }
    }
}

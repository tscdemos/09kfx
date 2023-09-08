namespace guitarStore;

entity Product {
  key ID: UUID;
  productInformation: String(200);
  targetAudiencePitch: String(200);
  discount: Double;
  warehouseStock: Association to Warehouse;
}

entity Warehouse {
  key ID: UUID;
  stock: Integer;
  products: Composition of many Product on products.warehouseStock = $self;
}


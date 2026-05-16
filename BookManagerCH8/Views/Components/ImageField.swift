//
//  ImageField.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 14/05/26.
//

import SwiftUI
import PhotosUI

public struct ImageField: View {
    
    @Binding var imageData: Data?
    @State private var photosPickerItem: PhotosPickerItem?
    
    private var imagePreview: UIImage {
        if let imageData{
            UIImage(data: imageData)!
        } else {
            UIImage(resource: .default)
        }
    }
    
    public var body: some View {
        PhotosPicker(
            selection: $photosPickerItem,
            matching: .images,
            photoLibrary: .shared()
        ){
            Image(uiImage: imagePreview)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
        } .onChange(of: photosPickerItem){
            Task{
                if let photosPickerItem,
                   let data = try? await photosPickerItem.loadTransferable(type: Data.self) {
                    self.imageData = data
                }
            }
        }
    }
}

require 'rails_helper'
RSpec.describe View, type: :model do
  describe '#create' do
    before do
      @view = FactoryBot.build(:view)
    end
      describe '新規投稿' do
        context '新規投稿できるとき' do
          it 'imageからpriceまでの9項目に情報が存在すれば登録できる' do
            expect(@view).to be_valid
          end
        end

      context '新規投稿できない時' do
        it 'imageが空では投稿できない' do
          @view.image = nil
          @view.valid?
          expect(@view.errors.full_messages).to include("Image can't be blank")
        end
        it 'titleが空では投稿できない' do
          @view.title = ''
          @view.valid?
          expect(@view.errors.full_messages).to include("Title can't be blank")
        end
        it 'informationが空では投稿できない' do
          @view.information = ''
          @view.valid?
          expect(@view.errors.full_messages).to include("Information can't be blank")
        end
        it 'addressが空では投稿できない' do
          @view.address = ''
          @view.valid?
          expect(@view.errors.full_messages).to include("Address can't be blank")
        end
        it 'accessが空では投稿できない' do
          @view.access = ''
          @view.valid?
          expect(@view.errors.full_messages).to include("Access can't be blank")
        end
        it 'shopが空では投稿できない' do
          @view.shop = ''
          @view.valid?
          expect(@view.errors.full_messages).to include("Shop can't be blank")
        end
        it 'opening_hoursが空では投稿できない' do
          @view.opening_hours = ''
          @view.valid?
          expect(@view.errors.full_messages).to include("Opening hours can't be blank")
        end
        it 'priceが空では投稿できない' do
          @view.price = ''
          @view.valid?
          expect(@view.errors.full_messages).to include("Price can't be blank")
        end
        it 'phone_numberが空では投稿できない' do
          @view.phone_number = ''
          @view.valid?
          expect(@view.errors.full_messages).to include("Phone number is invalid")
        end
        it 'phone_numberが全角数字では投稿できない' do
          @view.phone_number = '０９０４４４８８９８６１'
          @view.valid?
          expect(@view.errors.full_messages).to include("Phone number is invalid")
        end
        it 'phone_numberがハイフン込みでは投稿できない' do
          @view.phone_number = '090-1123-0427'
          @view.valid?
          expect(@view.errors.full_messages).to include("Phone number is invalid")
        end
      end
    end
  end
end
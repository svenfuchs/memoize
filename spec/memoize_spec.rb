describe Memoize do
  let(:const) do
    Class.new do
      include Memoize

      def count
        @count ||= 0
        @count += 1
      end
      memoize :count

      prepend Module.new {
        attr_reader :called

        def count
          @called ||= 0
          @called += 1
          super
        end
      }
    end
  end

  let(:obj) { const.new }

  before { 10.times { obj.count } }

  it { expect(obj.count).to eq 1 }
  it { expect(obj.called).to eq 10 }
end

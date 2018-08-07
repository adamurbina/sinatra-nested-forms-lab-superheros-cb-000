class Team
    attr_accessor :name, :motto, :members

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
    end
end

module Sample
    class SampleClass
        def meth1
            def meth2
                passport = "abc"
                puts passport
            end
            meth2
        end
    end
end


s = Sample::SampleClass.new.meth1